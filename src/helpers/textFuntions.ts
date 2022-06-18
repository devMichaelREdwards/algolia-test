export const headerConvert = (header: string) => {
    return header[0].toUpperCase() + header.slice(1).replace("_", " ");
}
