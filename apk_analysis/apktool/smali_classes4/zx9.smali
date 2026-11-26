.class public final synthetic Lzx9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/i0;

.field public final synthetic c:J

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;JF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzx9;->b:Lcom/my/tracker/obfuscated/i0;

    iput-wide p2, p0, Lzx9;->c:J

    iput p4, p0, Lzx9;->d:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-wide v0, p0, Lzx9;->c:J

    iget v2, p0, Lzx9;->d:F

    iget-object p0, p0, Lzx9;->b:Lcom/my/tracker/obfuscated/i0;

    invoke-static {p0, v0, v1, v2}, Lcom/my/tracker/obfuscated/i0;->s(Lcom/my/tracker/obfuscated/i0;JF)V

    return-void
.end method
