.class public final Lvl7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyl7;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Ljava/lang/Object;",
            "Lbm7<",
            "*>;",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ldm7$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ldm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvl7;->a:Ljava/lang/Object;

    iput-object p2, p0, Lvl7;->b:Ldm3;

    sget-object p1, Ldm7$a;->b:Ldm7$a;

    iput-object p1, p0, Lvl7;->c:Ldm7$a;

    return-void
.end method


# virtual methods
.method public final a()Ldm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldm3<",
            "Lbm7<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ldm3<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            "Lo22;",
            "Lj59;",
            ">;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Ldm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldm3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lvl7;->c:Ldm7$a;

    return-object p0
.end method

.method public final c()Ldm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldm3<",
            "Ljava/lang/Object;",
            "Lbm7<",
            "*>;",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lvl7;->b:Ldm3;

    return-object p0
.end method

.method public final d()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lvl7;->a:Ljava/lang/Object;

    return-object p0
.end method
