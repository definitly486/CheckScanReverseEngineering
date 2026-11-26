.class public final Lnq7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ltp7;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ltp7;

    sget-object v1, Lmx2;->b:Lmx2;

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Ltp7;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)V

    sput-object v0, Lnq7;->a:Ltp7;

    return-void
.end method
