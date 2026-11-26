.class public final Lkd$l0$a;
.super Lkd$l0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lkd$l0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkd$l0$a;

    const-string v1, "copy_ref"

    sget-object v2, Lmx2;->b:Lmx2;

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Ref"

    invoke-direct {v0, v2, v1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lkd$l0$a;->e:Lkd$l0$a;

    return-void
.end method
