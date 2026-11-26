.class public final Ln64$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln64;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln64$a;->a:Ljava/lang/String;

    iput-object p2, p0, Ln64$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toInstant()Lg64;
    .locals 3

    new-instance v0, Li64;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Ln64$a;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " when parsing an Instant from \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ln64$a;->b:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-static {v2, p0}, Lm64;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
