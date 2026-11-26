.class public final Lkd$s0$c$b$a;
.super Lkd$s0$c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$s0$c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lkd$s0$c$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkd$s0$c$b$a;

    const-string v1, "Clicks"

    const-string v2, "Block"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lkd$s0$c;-><init>(Ljava/util/Map;)V

    sput-object v0, Lkd$s0$c$b$a;->e:Lkd$s0$c$b$a;

    return-void
.end method
