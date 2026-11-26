.class public final synthetic Ljv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lokhttp3/b$c;
.implements Lyads/y83;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ljv;->b:I

    iput-object p1, p0, Ljv;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljy6;)Lokhttp3/b;
    .locals 0

    iget-object p0, p0, Ljv;->c:Ljava/lang/Object;

    check-cast p0, Lio/appmetrica/analytics/networkokhttp/impl/d;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/networkokhttp/impl/c;->a(Lio/appmetrica/analytics/networkokhttp/impl/d;Lokhttp3/a;)Lokhttp3/b;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ljv;->b:I

    iget-object p0, p0, Ljv;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_0
    check-cast p0, Lip0;

    invoke-virtual {p0, p1}, Lip0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk57;

    return-object p0

    :pswitch_1
    check-cast p0, Law;

    invoke-virtual {p0, p1}, Law;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc18;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
