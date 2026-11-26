.class public final Lyads/kn3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Yandex Mobile Adsintegrated incorrectly"

    iput-object v0, p0, Lyads/kn3;->a:Ljava/lang/String;

    return-void
.end method

.method public static final a(Lyads/vm3;)Ljava/lang/CharSequence;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lyads/vm3;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\t\u00b7\t"

    .line 31
    invoke-static {v0, p0}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/o94;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Lyads/o94;->a()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lyads/kn3;->a:Ljava/lang/String;

    const-string p1, "\n"

    invoke-static {p0, p1}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lw82;

    const/16 p0, 0x9

    invoke-direct {v5, p0}, Lw82;-><init>(I)V

    const/4 v4, 0x0

    const/16 v6, 0x1c

    const-string v1, "\n"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
