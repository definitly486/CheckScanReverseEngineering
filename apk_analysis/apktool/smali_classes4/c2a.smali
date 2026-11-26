.class public final synthetic Lc2a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/m2;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/m2;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2a;->b:Lcom/my/tracker/obfuscated/m2;

    iput-wide p2, p0, Lc2a;->c:J

    iput-wide p4, p0, Lc2a;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, Lc2a;->c:J

    iget-wide v2, p0, Lc2a;->d:J

    iget-object p0, p0, Lc2a;->b:Lcom/my/tracker/obfuscated/m2;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/my/tracker/obfuscated/m2;->i(Lcom/my/tracker/obfuscated/m2;JJ)V

    return-void
.end method
