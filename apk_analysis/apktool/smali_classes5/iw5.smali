.class public final synthetic Liw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lbm7;

.field public final synthetic c:Lkw5;


# direct methods
.method public synthetic constructor <init>(Lbm7;Lkw5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liw5;->b:Lbm7;

    iput-object p2, p0, Liw5;->c:Lkw5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Liw5;->c:Lkw5;

    sget-object v1, Lj59;->a:Lj59;

    iget-object p0, p0, Liw5;->b:Lbm7;

    invoke-interface {p0, v0, v1}, Lbm7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
