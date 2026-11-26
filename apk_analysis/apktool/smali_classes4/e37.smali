.class public final Le37;
.super Lg37;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lj95;

.field public final synthetic b:Lgx0;


# direct methods
.method public constructor <init>(Lj95;Lgx0;)V
    .locals 0

    iput-object p1, p0, Le37;->a:Lj95;

    iput-object p2, p0, Le37;->b:Lgx0;

    invoke-direct {p0}, Lg37;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Le37;->b:Lgx0;

    invoke-virtual {p0}, Lgx0;->f()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final b()Lj95;
    .locals 0

    iget-object p0, p0, Le37;->a:Lj95;

    return-object p0
.end method

.method public final c(Lvu0;)V
    .locals 0

    iget-object p0, p0, Le37;->b:Lgx0;

    invoke-interface {p1, p0}, Lvu0;->d(Lgx0;)Lvu0;

    return-void
.end method
