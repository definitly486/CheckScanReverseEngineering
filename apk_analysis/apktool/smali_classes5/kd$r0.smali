.class public final Lkd$r0;
.super Lkd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "r0"
.end annotation


# static fields
.field public static final e:Lkd$r0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkd$r0;

    const-string v1, "tap_bonus"

    sget-object v2, Lmx2;->b:Lmx2;

    invoke-direct {v0, v1, v2}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lkd$r0;->e:Lkd$r0;

    return-void
.end method
