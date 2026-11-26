.class public final synthetic Lmu0$f;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu0;->h()Lwl7;
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
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lmu0$f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lmu0$f;

    const-string v4, "processResultSelectReceiveCatching(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lmu0;

    const-string v3, "processResultSelectReceiveCatching"

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lmu0$f;->c:Lmu0$f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lmu0;

    sget-object p0, Lmu0;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lsu0;->l:Lbh8;

    if-ne p3, p0, :cond_0

    invoke-virtual {p1}, Lmu0;->n()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p3, Lp91$a;

    invoke-direct {p3, p0}, Lp91$a;-><init>(Ljava/lang/Throwable;)V

    :cond_0
    new-instance p0, Lp91;

    invoke-direct {p0, p3}, Lp91;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
