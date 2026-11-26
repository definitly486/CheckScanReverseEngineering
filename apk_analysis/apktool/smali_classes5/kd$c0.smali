.class public final Lkd$c0;
.super Lkd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c0"
.end annotation


# static fields
.field public static final e:Lkd$c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkd$c0;

    const-string v1, "online_shop_tutorial_tap"

    sget-object v2, Lmx2;->b:Lmx2;

    invoke-direct {v0, v1, v2}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lkd$c0;->e:Lkd$c0;

    return-void
.end method
