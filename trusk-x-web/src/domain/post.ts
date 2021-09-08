import {IEmployee} from './employee'

export interface IPost {
    _id: string
    title: string
    body: string
    author: IEmployee,
    createdAt: Date
}
