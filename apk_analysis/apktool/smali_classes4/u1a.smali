.class public final synthetic Lu1a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/m2;

.field public final synthetic c:Ljava/lang/Boolean;

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/m2;Ljava/lang/Boolean;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1a;->b:Lcom/my/tracker/obfuscated/m2;

    iput-object p2, p0, Lu1a;->c:Ljava/lang/Boolean;

    iput-wide p3, p0, Lu1a;->d:J

    iput-wide p5, p0, Lu1a;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-wide v2, p0, Lu1a;->d:J

    iget-wide v4, p0, Lu1a;->e:J

    iget-object v0, p0, Lu1a;->b:Lcom/my/tracker/obfuscated/m2;

    iget-object v1, p0, Lu1a;->c:Ljava/lang/Boolean;

    invoke-static/range {v0 .. v5}, Lcom/my/tracker/obfuscated/m2;->b(Lcom/my/tracker/obfuscated/m2;Ljava/lang/Boolean;JJ)V

    return-void
.end method
