.class public final synthetic Lz1a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IJJ)V
    .locals 0

    iput p3, p0, Lz1a;->b:I

    iput-object p1, p0, Lz1a;->e:Ljava/lang/Object;

    iput-object p2, p0, Lz1a;->f:Ljava/lang/Object;

    iput-wide p4, p0, Lz1a;->c:J

    iput-wide p6, p0, Lz1a;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lz1a;->b:I

    iget-object v1, p0, Lz1a;->f:Ljava/lang/Object;

    iget-object v2, p0, Lz1a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v3, v2

    check-cast v3, Lyads/nm;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-wide v5, p0, Lz1a;->c:J

    iget-wide v7, p0, Lz1a;->d:J

    invoke-virtual/range {v3 .. v8}, Lyads/nm;->b(Ljava/lang/String;JJ)V

    return-void

    :pswitch_0
    move-object v9, v2

    check-cast v9, Lcom/my/tracker/obfuscated/m2;

    move-object v10, v1

    check-cast v10, Lcom/my/tracker/obfuscated/f3;

    iget-wide v11, p0, Lz1a;->c:J

    iget-wide v13, p0, Lz1a;->d:J

    invoke-static/range {v9 .. v14}, Lcom/my/tracker/obfuscated/m2;->a(Lcom/my/tracker/obfuscated/m2;Lcom/my/tracker/obfuscated/f3;JJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
