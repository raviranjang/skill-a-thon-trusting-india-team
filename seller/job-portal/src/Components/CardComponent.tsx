import Card from 'react-bootstrap/Card';
import Badge from 'react-bootstrap/Badge';

function VcCard({ card }: { card: any }) {
  const toTitleCase = (str: string) => {
    return str.replace(
      /\w\S*/g,
      (txt: string) => {
        return txt.charAt(0).toUpperCase() + txt.substr(1);
      }
    );
  }
  return (
    <Card style={{ width: '25rem', margin: '10px' }}>
      <Card.Body>
        <Card.Title>
          <Badge bg="primary">
            {card.type}
          </Badge>
        </Card.Title>
        <Card.Text>
          {Object.keys(card.vcDisplayData).map((k: string, i: number) => {
            return <h6 key={i}>{toTitleCase(k)} : {card.vcDisplayData[k]}</h6>
          })}
        </Card.Text>
        {(card?.verifiedBy || '').length
          ? <Badge style={{
            position: 'absolute',
            bottom: '0',
            marginTop: '5px',
            marginBottom: '5px'
          }} bg="success">
            Verified By {card.verifiedBy}
          </Badge>
          : ''
        }
      </Card.Body>
    </Card>
  );
}

export default VcCard;