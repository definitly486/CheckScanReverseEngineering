.class public final Ltt3;
.super Lg37;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lut3;

.field public final synthetic b:Lbu0;


# direct methods
.method public constructor <init>(Lut3;Lbu0;)V
    .locals 0

    iput-object p1, p0, Ltt3;->a:Lut3;

    iput-object p2, p0, Ltt3;->b:Lbu0;

    invoke-direct {p0}, Lg37;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Ltt3;->b:Lbu0;

    iget-wide v0, p0, Lbu0;->c:J

    return-wide v0
.end method

.method public final b()Lj95;
    .locals 0

    iget-object p0, p0, Ltt3;->a:Lut3;

    iget-object p0, p0, Lut3;->a:Lg37;

    invoke-virtual {p0}, Lg37;->b()Lj95;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lvu0;)V
    .locals 0

    iget-object p0, p0, Ltt3;->b:Lbu0;

    invoke-virtual {p0}, Lbu0;->u0()Lgx0;

    move-result-object p0

    invoke-interface {p1, p0}, Lvu0;->d(Lgx0;)Lvu0;

    return-void
.end method
