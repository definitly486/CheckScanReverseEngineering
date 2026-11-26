.class public final synthetic Lds9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lds9;->b:I

    iput-object p1, p0, Lds9;->c:Ljava/lang/Object;

    iput-object p2, p0, Lds9;->d:Ljava/lang/Object;

    iput-object p3, p0, Lds9;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lds9;->c:Ljava/lang/Object;

    check-cast v0, Lcom/my/tracker/obfuscated/d;

    iget-object v1, p0, Lds9;->d:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/hms/iap/entity/ProductInfoReq;

    iget-object p0, p0, Lds9;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {v0, v1, p0}, Lcom/my/tracker/obfuscated/d;->c(Lcom/my/tracker/obfuscated/d;Lcom/huawei/hms/iap/entity/ProductInfoReq;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lds9;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lds9;->c:Ljava/lang/Object;

    check-cast v0, Lyads/nm;

    iget-object v1, p0, Lds9;->d:Ljava/lang/Object;

    check-cast v1, Lyads/vz2;

    iget-object p0, p0, Lds9;->e:Ljava/lang/Object;

    check-cast p0, Lyads/oi0;

    invoke-virtual {v0, v1, p0}, Lyads/nm;->b(Lyads/vz2;Lyads/oi0;)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lds9;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
