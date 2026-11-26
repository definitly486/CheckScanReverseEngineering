.class public Lyads/hi6;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final b:Lyads/en4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/hi6;->b:Lyads/en4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lyads/hi6;->b:Lyads/en4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lyads/hi6;->b:Lyads/en4;

    return-void
.end method

.method public constructor <init>(Lyads/en4;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 8
    iput-object p1, p0, Lyads/hi6;->b:Lyads/en4;

    return-void
.end method
