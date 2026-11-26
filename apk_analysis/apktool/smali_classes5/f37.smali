.class public final Lf37;
.super Lg37;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lj95;

.field public final synthetic b:I

.field public final synthetic c:[B


# direct methods
.method public constructor <init>(Lj95;I[B)V
    .locals 0

    iput-object p1, p0, Lf37;->a:Lj95;

    iput p2, p0, Lf37;->b:I

    iput-object p3, p0, Lf37;->c:[B

    invoke-direct {p0}, Lg37;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget p0, p0, Lf37;->b:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final b()Lj95;
    .locals 0

    iget-object p0, p0, Lf37;->a:Lj95;

    return-object p0
.end method

.method public final c(Lvu0;)V
    .locals 1

    iget-object v0, p0, Lf37;->c:[B

    iget p0, p0, Lf37;->b:I

    invoke-interface {p1, p0, v0}, Lvu0;->j(I[B)Lvu0;

    return-void
.end method
