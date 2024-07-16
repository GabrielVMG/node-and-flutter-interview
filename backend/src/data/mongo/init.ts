import mongoose from 'mongoose';


interface ConectionOptions {
  mongoUrl: string;
  dbName:string;
}

export class MongoDB {
  static async connect(conectionOptions: ConectionOptions) {

    const {mongoUrl, dbName} = conectionOptions;

    try {
      await mongoose.connect(mongoUrl, {dbName});
      console.log('mongo connected')
    } catch (error) {
      throw error;
    }

  }
}