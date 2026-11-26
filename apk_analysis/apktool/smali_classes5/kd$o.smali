.class public final Lkd$o;
.super Lkd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation


# static fields
.field public static final e:Lkd$o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkd$o;

    const-string v1, "expand_all_categories"

    sget-object v2, Lmx2;->b:Lmx2;

    invoke-direct {v0, v1, v2}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lkd$o;->e:Lkd$o;

    return-void
.end method
