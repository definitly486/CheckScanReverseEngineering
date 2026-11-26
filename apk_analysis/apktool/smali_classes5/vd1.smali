.class public final synthetic Lvd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqq1;


# instance fields
.field public final synthetic b:Lxd1;


# direct methods
.method public synthetic constructor <init>(Lxd1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvd1;->b:Lxd1;

    return-void
.end method


# virtual methods
.method public final b(Lmq1;)V
    .locals 0

    iget-object p0, p0, Lvd1;->b:Lxd1;

    invoke-virtual {p0}, Lxd1;->b()Lhi0;

    move-result-object p0

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lhi0;->onNext(Ljava/lang/Object;)V

    return-void
.end method
