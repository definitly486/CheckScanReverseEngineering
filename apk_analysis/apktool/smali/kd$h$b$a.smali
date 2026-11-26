.class public final Lkd$h$b$a;
.super Lkd$h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$h$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lkd$h$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkd$h$b$a;

    const-string v1, "go_to_brandlink"

    const-string v2, "Scanner"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Cheques event"

    invoke-direct {v0, v2, v1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lkd$h$b$a;->e:Lkd$h$b$a;

    return-void
.end method
