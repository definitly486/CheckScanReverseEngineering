.class public final Lyads/vn1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/pz;

.field public b:Lyads/qz;


# direct methods
.method public constructor <init>(Lyads/pz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/vn1;->a:Lyads/pz;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Landroid/view/View;)V
    .locals 3

    const-string v0, "assetName"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0xa

    invoke-static {v2, p1}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lyads/vn1;->a:Lyads/pz;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lyads/vn1;->b:Lyads/qz;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lyads/qz;->b:Ljava/util/LinkedHashMap;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lyads/pz;

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1, p2, v0}, Lyads/pz;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
