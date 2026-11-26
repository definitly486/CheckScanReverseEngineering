.class public final Lp94$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp94$f;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lp94$f;


# direct methods
.method public constructor <init>(Lp94$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp94$f$b;->b:Lp94$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lp94$f$b;->b:Lp94$f;

    iget-object v1, v0, Lp94$f;->c:Lp94;

    iget-object v1, v1, Lp94;->u:Ljava/util/ArrayList;

    iget-object v0, v0, Lp94$f;->a:Lp94$c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lp94$f$b;->b:Lp94$f;

    iget-object v0, v0, Lp94$f;->c:Lp94;

    iget-object v0, v0, Lp94;->y:Ldx1;

    iget-object v0, v0, Ldx1;->a:Lcx1;

    sget-object v1, Lcx1;->SHUTDOWN:Lcx1;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lp94$f$b;->b:Lp94$f;

    iget-object v0, v0, Lp94$f;->c:Lp94;

    iget-object v0, v0, Lp94;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lp94$f$b;->b:Lp94$f;

    iget-object p0, p0, Lp94$f;->c:Lp94;

    iget-object v0, p0, Lp94;->m:Lch8;

    new-instance v1, Lu94;

    invoke-direct {v1, p0}, Lu94;-><init>(Lp94;)V

    invoke-virtual {v0, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
