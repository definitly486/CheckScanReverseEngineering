.class public final synthetic Lme7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lme7;->b:I

    iput-object p1, p0, Lme7;->c:Ljava/lang/Object;

    iput-object p2, p0, Lme7;->d:Ljava/lang/Object;

    iput-object p3, p0, Lme7;->e:Ljava/lang/Object;

    iput-object p4, p0, Lme7;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lme7;->b:I

    iget-object v1, p0, Lme7;->f:Ljava/lang/Object;

    iget-object v2, p0, Lme7;->e:Ljava/lang/Object;

    iget-object v3, p0, Lme7;->d:Ljava/lang/Object;

    iget-object p0, p0, Lme7;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/tracker/obfuscated/p2;

    check-cast v3, Lcom/my/tracker/obfuscated/u2;

    check-cast v2, Ljava/lang/Boolean;

    check-cast v1, Lcom/my/tracker/obfuscated/f3;

    invoke-static {p0, v3, v2, v1}, Lcom/my/tracker/obfuscated/p2;->a(Lcom/my/tracker/obfuscated/p2;Lcom/my/tracker/obfuscated/u2;Ljava/lang/Boolean;Lcom/my/tracker/obfuscated/f3;)V

    return-void

    :pswitch_0
    check-cast p0, Ljava/util/List;

    check-cast v3, Landroidx/work/impl/model/WorkGenerationalId;

    check-cast v2, Landroidx/work/Configuration;

    check-cast v1, Landroidx/work/impl/WorkDatabase;

    invoke-static {p0, v3, v2, v1}, Landroidx/work/impl/Schedulers;->b(Ljava/util/List;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
