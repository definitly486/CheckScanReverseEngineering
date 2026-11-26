.class public Lkd$e$d$g;
.super Lkd$e$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$e$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkd$e$d$g$a;,
        Lkd$e$d$g$b;,
        Lkd$e$d$g$c;,
        Lkd$e$d$g$d;,
        Lkd$e$d$g$e;,
        Lkd$e$d$g$f;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "Selected from"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lkd$e$d;-><init>(Ljava/lang/Object;)V

    return-void
.end method
