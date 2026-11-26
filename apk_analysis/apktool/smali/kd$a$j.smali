.class public Lkd$a$j;
.super Lkd$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkd$a$j$a;,
        Lkd$a$j$b;,
        Lkd$a$j$c;,
        Lkd$a$j$d;,
        Lkd$a$j$e;,
        Lkd$a$j$f;,
        Lkd$a$j$g;,
        Lkd$a$j$h;,
        Lkd$a$j$i;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "PromocodeMainScreen"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Account"

    invoke-direct {p0, v0, p1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
