.class public final Lyads/vy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yy0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/ry0;Lyads/vq0;Lyads/fs2;)Z
    .locals 0

    instance-of p0, p2, Lyads/cy0;

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    check-cast p2, Lyads/cy0;

    iget-object p0, p2, Lyads/cy0;->a:Lyads/it0;

    iget-object p0, p0, Lyads/it0;->a:Lyads/lt0;

    iget-object p2, p3, Lyads/vq0;->l:Lyads/pq0;

    const-string p3, "clipboard"

    invoke-virtual {p2, p3}, Lyads/pq0;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Landroid/content/ClipboardManager;

    if-eqz p3, :cond_0

    check-cast p2, Landroid/content/ClipboardManager;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    instance-of p3, p0, Lyads/jt0;

    if-eqz p3, :cond_2

    check-cast p0, Lyads/jt0;

    iget-object p0, p0, Lyads/jt0;->a:Lyads/k60;

    iget-object p0, p0, Lyads/k60;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance p1, Landroid/content/ClipData;

    const-string p3, "text/plain"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    new-instance p4, Landroid/content/ClipData$Item;

    invoke-direct {p4, p0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const-string p0, "Copied text"

    invoke-direct {p1, p0, p3, p4}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    goto :goto_1

    :cond_2
    instance-of p3, p0, Lyads/kt0;

    if-eqz p3, :cond_3

    check-cast p0, Lyads/kt0;

    iget-object p0, p0, Lyads/kt0;->a:Lyads/r60;

    iget-object p0, p0, Lyads/r60;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    new-instance p1, Landroid/content/ClipData;

    const-string p3, "text/uri-list"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    new-instance p4, Landroid/content/ClipData$Item;

    invoke-direct {p4, p0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    const-string p0, "Copied url"

    invoke-direct {p1, p0, p3, p4}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    :goto_1
    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-static {}, Lme0;->e()V

    :cond_4
    return p1
.end method
