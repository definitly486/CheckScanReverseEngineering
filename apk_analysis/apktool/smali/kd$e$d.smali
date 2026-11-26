.class public Lkd$e$d;
.super Lkd$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkd$e$d$a;,
        Lkd$e$d$b;,
        Lkd$e$d$c;,
        Lkd$e$d$d;,
        Lkd$e$d$e;,
        Lkd$e$d$f;,
        Lkd$e$d$g;,
        Lkd$e$d$h;,
        Lkd$e$d$i;,
        Lkd$e$d$j;,
        Lkd$e$d$k;,
        Lkd$e$d$l;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "Offer_card"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Bonuses"

    invoke-direct {p0, v0, p1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
