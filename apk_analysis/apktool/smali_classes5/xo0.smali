.class public final synthetic Lxo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqq1;


# instance fields
.field public final synthetic b:Llp0;


# direct methods
.method public synthetic constructor <init>(Llp0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxo0;->b:Llp0;

    return-void
.end method


# virtual methods
.method public final b(Lmq1;)V
    .locals 1

    iget-object p0, p0, Lxo0;->b:Llp0;

    iget-object p0, p0, Llp0;->e:Lhi0;

    new-instance p1, Lx68$a;

    sget-object v0, Lkx2;->b:Lkx2;

    invoke-direct {p1, v0}, Lx68$a;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lhi0;->onNext(Ljava/lang/Object;)V

    return-void
.end method
