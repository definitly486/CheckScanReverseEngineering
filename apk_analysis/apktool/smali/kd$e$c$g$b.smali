.class public final Lkd$e$c$g$b;
.super Lkd$e$c$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$e$c$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, "Show"

    invoke-static {p1, v0}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lkd$e$c$g;-><init>(Ljava/util/Map;)V

    return-void
.end method
