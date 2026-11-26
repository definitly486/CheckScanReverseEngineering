.class public final synthetic Lq5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Lyads/vq0;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lq5a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq5a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lq5a;->d:Ljava/lang/Object;

    iput-object p3, p0, Lq5a;->e:Ljava/lang/Object;

    iput-object p4, p0, Lq5a;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lyads/uh1;Lyads/as2;Lyads/as2;Lyads/fs2;)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lq5a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq5a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lq5a;->d:Ljava/lang/Object;

    iput-object p4, p0, Lq5a;->f:Ljava/lang/Object;

    iput-object p3, p0, Lq5a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lq5a;->b:I

    iget-object v1, p0, Lq5a;->f:Ljava/lang/Object;

    iget-object v2, p0, Lq5a;->e:Ljava/lang/Object;

    iget-object v3, p0, Lq5a;->d:Ljava/lang/Object;

    iget-object p0, p0, Lq5a;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/Integer;

    check-cast v3, Lyads/vq0;

    check-cast v2, Ljava/lang/String;

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p0, v3, v2, v1, p1}, Lyads/sy0;->a(Ljava/lang/Integer;Lyads/vq0;Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/uh1;

    check-cast v3, Lyads/as2;

    check-cast v1, Lyads/fs2;

    check-cast v2, Lyads/as2;

    invoke-static {p0, v3, v1, v2, p1}, Lyads/ph1;->a(Lyads/uh1;Lyads/as2;Lyads/fs2;Lyads/as2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
