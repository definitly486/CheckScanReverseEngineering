.class public final Lkd$j$d$a;
.super Lkd$j$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$j$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lkd$j$d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkd$j$d$a;

    const-string v1, "ButtonBack"

    const-string v2, "Landing"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Cobrand"

    invoke-direct {v0, v2, v1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lkd$j$d$a;->e:Lkd$j$d$a;

    return-void
.end method
