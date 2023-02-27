import { Request, Response } from "express";

export const response = (req: Request, res: Response) => {
  const { data, status = 200, success = true, message = "" } = res.locals || {};
    console.log("inside response, data:");
    console.log(data);
  Object.keys(data).forEach((key1) => {
    if (data[key1] === null) {
      delete data[key1];
    } else {
      if (data[key1].isArray()) {
        console.log("data[" + key1 + " is an array");
      } else {
        Object.keys(data[key1]).forEach((key2) => {
          if (data[key1][key2] === null) {
            delete data[key1][key2];
          } else {
            if (data[key1][key2].isArray()) {
              console.log("data[" + key1 + "][" + key2 + "] is an array");
              for (let i = 0; i < data[key1][key2].length; i++) {
                Object.keys(data[key1][key2][i]).forEach((key3) => {
                  if (data[key1][key2][i][key3] === null) {
                    delete data[key1][key2][i][key3];
                  }
                });
              }
            } else {
              Object.keys(data[key1][key2]).forEach((key3) => {
                if (data[key1][key2][key3] === null) {
                  delete data[key1][key2][key3];
                }
              });
            }
          }
        });
      }
    }
  });

  res.status(status || (success ? 200 : 500)).json({
    data,
    success,
    message: message || (success ? "" : "Oops! Something went wrong."),
  });
};
