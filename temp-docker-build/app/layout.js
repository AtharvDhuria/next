export const metadata = {
  title: 'Next.js App',
  description: 'Created with Next.js 15',
}

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  )
}
