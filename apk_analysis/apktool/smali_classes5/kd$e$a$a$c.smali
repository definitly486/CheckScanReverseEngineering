.class public Lkd$e$a$a$c;
.super Lkd$e$a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$e$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkd$e$a$a$c$a;
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/util/Map;)V
    .locals 1

    const-string v0, "Hot items"

    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lkd$e$a$a;-><init>(ILjava/lang/Object;)V

    return-void
.end method
