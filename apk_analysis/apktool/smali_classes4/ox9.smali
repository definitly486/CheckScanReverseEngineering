.class public final synthetic Lox9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/i0;

.field public final synthetic c:J

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;JFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lox9;->b:Lcom/my/tracker/obfuscated/i0;

    iput-wide p2, p0, Lox9;->c:J

    iput p4, p0, Lox9;->d:F

    iput p5, p0, Lox9;->e:F

    iput p6, p0, Lox9;->f:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v4, p0, Lox9;->e:F

    iget v5, p0, Lox9;->f:F

    iget-object v0, p0, Lox9;->b:Lcom/my/tracker/obfuscated/i0;

    iget-wide v1, p0, Lox9;->c:J

    iget v3, p0, Lox9;->d:F

    invoke-static/range {v0 .. v5}, Lcom/my/tracker/obfuscated/i0;->c(Lcom/my/tracker/obfuscated/i0;JFFF)V

    return-void
.end method
