.class public final synthetic Lmu0$g;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu0;->getOnSend()Lxl7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Ldm3<",
        "Lmu0<",
        "*>;",
        "Lbm7<",
        "*>;",
        "Ljava/lang/Object;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lmu0$g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lmu0$g;

    const-string v4, "registerSelectForSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lmu0;

    const-string v3, "registerSelectForSend"

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lmu0$g;->c:Lmu0$g;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lmu0;

    check-cast p2, Lbm7;

    invoke-virtual {p1, p2, p3}, Lmu0;->F(Lbm7;Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
