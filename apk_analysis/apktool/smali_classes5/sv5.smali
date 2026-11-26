.class public final Lsv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll9;


# instance fields
.field public final a:Lbu0;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lbu0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsv5;->a:Lbu0;

    iput p2, p0, Lsv5;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lsv5;->b:I

    return p0
.end method

.method public final b(B)V
    .locals 1

    iget-object v0, p0, Lsv5;->a:Lbu0;

    invoke-virtual {v0, p1}, Lbu0;->A0(I)V

    iget p1, p0, Lsv5;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lsv5;->b:I

    iget p1, p0, Lsv5;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lsv5;->c:I

    return-void
.end method

.method public final q()I
    .locals 0

    iget p0, p0, Lsv5;->c:I

    return p0
.end method

.method public final write([BII)V
    .locals 1

    iget-object v0, p0, Lsv5;->a:Lbu0;

    invoke-virtual {v0, p1, p2, p3}, Lbu0;->write([BII)V

    iget p1, p0, Lsv5;->b:I

    sub-int/2addr p1, p3

    iput p1, p0, Lsv5;->b:I

    iget p1, p0, Lsv5;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lsv5;->c:I

    return-void
.end method
