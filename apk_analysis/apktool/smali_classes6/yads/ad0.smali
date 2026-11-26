.class public final Lyads/ad0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/net/Uri;

.field public final b:I

.field public final c:Ljava/util/Map;

.field public d:J

.field public e:J

.field public f:Ljava/lang/String;

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lyads/ad0;->b:I

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lyads/ad0;->c:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lyads/ad0;->e:J

    return-void
.end method
