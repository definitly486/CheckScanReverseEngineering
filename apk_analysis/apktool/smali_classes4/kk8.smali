.class public final synthetic Lkk8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkk8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkk8;->f:Ljava/lang/Object;

    iput-object p2, p0, Lkk8;->c:Ljava/lang/String;

    iput-object p3, p0, Lkk8;->d:Ljava/lang/String;

    iput-wide p4, p0, Lkk8;->e:J

    iput-object p6, p0, Lkk8;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;Lnl3;JLjava/lang/String;)V
    .locals 1

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lkk8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkk8;->f:Ljava/lang/Object;

    iput-object p2, p0, Lkk8;->c:Ljava/lang/String;

    iput-object p3, p0, Lkk8;->g:Ljava/lang/Object;

    iput-wide p4, p0, Lkk8;->e:J

    iput-object p6, p0, Lkk8;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lkk8;->b:I

    iget-object v1, p0, Lkk8;->g:Ljava/lang/Object;

    iget-object v2, p0, Lkk8;->f:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v3, v2

    check-cast v3, Lcom/my/tracker/obfuscated/i0;

    iget-wide v6, p0, Lkk8;->e:J

    move-object v8, v1

    check-cast v8, Ljava/lang/Runnable;

    iget-object v4, p0, Lkk8;->c:Ljava/lang/String;

    iget-object v5, p0, Lkk8;->d:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/my/tracker/obfuscated/i0;->j(Lcom/my/tracker/obfuscated/i0;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Runnable;)V

    return-void

    :pswitch_0
    move-object v9, v2

    check-cast v9, Lcom/tapjoy/TapjoyCache;

    move-object v11, v1

    check-cast v11, Lnl3;

    iget-wide v12, p0, Lkk8;->e:J

    iget-object v14, p0, Lkk8;->d:Ljava/lang/String;

    iget-object v10, p0, Lkk8;->c:Ljava/lang/String;

    invoke-static/range {v9 .. v14}, Lcom/tapjoy/TapjoyCache;->a(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;Lnl3;JLjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
