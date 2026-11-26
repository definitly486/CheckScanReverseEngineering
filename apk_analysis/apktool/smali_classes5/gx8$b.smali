.class public Lgx8$b;
.super Lgx8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final d:Lm54;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgx8$b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    sget-object v0, Lgx8$i;->Character:Lgx8$i;

    .line 33
    invoke-direct {p0, v0}, Lgx8;-><init>(Lgx8$i;)V

    .line 34
    new-instance v0, Lm54;

    .line 35
    invoke-direct {v0}, Lm54;-><init>()V

    .line 36
    iput-object v0, p0, Lgx8$b;->d:Lm54;

    return-void
.end method

.method public constructor <init>(Lgx8$b;)V
    .locals 2

    sget-object v0, Lgx8$i;->Character:Lgx8$i;

    invoke-direct {p0, v0}, Lgx8;-><init>(Lgx8$i;)V

    new-instance v0, Lm54;

    invoke-direct {v0}, Lm54;-><init>()V

    iput-object v0, p0, Lgx8$b;->d:Lm54;

    iget v1, p1, Lgx8;->b:I

    iput v1, p0, Lgx8;->b:I

    iget v1, p1, Lgx8;->c:I

    iput v1, p0, Lgx8;->c:I

    iget-object p0, p1, Lgx8$b;->d:Lm54;

    invoke-virtual {p0}, Lm54;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lm54;->d()V

    iput-object p0, v0, Lm54;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 0

    invoke-super {p0}, Lgx8;->f()V

    iget-object p0, p0, Lgx8$b;->d:Lm54;

    invoke-virtual {p0}, Lm54;->d()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgx8$b;->d:Lm54;

    invoke-virtual {p0}, Lm54;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
