import {Document} from 'mongoose'

export interface IEmployee extends Document {
    name: string
    email: string
    phone: string
    password: string
}
