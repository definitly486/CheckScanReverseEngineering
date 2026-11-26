.class public final Lyads/b94;
.super Lyads/vo2;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Variable \'"

    const-string v1, "\' is missing."

    invoke-static {v0, p1, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lyads/vo2;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    iput-object p1, p0, Lyads/b94;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lyads/b94;-><init>(Ljava/lang/String;)V

    return-void
.end method
