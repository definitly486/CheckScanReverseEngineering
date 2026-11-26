.class public final Lxd;
.super Lkd$e$d$g;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, "Search"

    invoke-static {p1, v0}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lkd$e$d$g;-><init>(Ljava/lang/Object;)V

    return-void
.end method
