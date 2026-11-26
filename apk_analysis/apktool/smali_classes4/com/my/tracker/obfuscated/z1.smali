.class public final Lcom/my/tracker/obfuscated/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/y1;


# instance fields
.field private final a:I

.field private b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/my/tracker/obfuscated/z1;->a:I

    iput-wide p2, p0, Lcom/my/tracker/obfuscated/z1;->b:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/my/tracker/obfuscated/z1;->a:I

    return p0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/my/tracker/obfuscated/z1;->b:J

    return-void
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/my/tracker/obfuscated/z1;->b:J

    return-wide v0
.end method
