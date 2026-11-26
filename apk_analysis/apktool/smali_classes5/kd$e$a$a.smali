.class public Lkd$e$a$a;
.super Lkd$e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkd$e$a$a$a;,
        Lkd$e$a$a$b;,
        Lkd$e$a$a$c;,
        Lkd$e$a$a$d;,
        Lkd$e$a$a$e;,
        Lkd$e$a$a$f;,
        Lkd$e$a$a$g;,
        Lkd$e$a$a$h;
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lkd$e$a;-><init>(Ljava/util/Map;)V

    return-void
.end method
