.class public final Lut3;
.super Lg37;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg37;


# direct methods
.method public constructor <init>(Lg37;)V
    .locals 0

    iput-object p1, p0, Lut3;->a:Lg37;

    invoke-direct {p0}, Lg37;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b()Lj95;
    .locals 0

    iget-object p0, p0, Lut3;->a:Lg37;

    invoke-virtual {p0}, Lg37;->b()Lj95;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lvu0;)V
    .locals 1

    new-instance v0, Lwt3;

    invoke-direct {v0, p1}, Lwt3;-><init>(Ls18;)V

    new-instance p1, Lhy6;

    invoke-direct {p1, v0}, Lhy6;-><init>(Ls18;)V

    iget-object p0, p0, Lut3;->a:Lg37;

    invoke-virtual {p0, p1}, Lg37;->c(Lvu0;)V

    invoke-virtual {p1}, Lhy6;->close()V

    return-void
.end method
