.class public final Lis2;
.super Ljava/lang/Throwable;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "Drawable with id: "

    const-string v1, " , not found"

    invoke-static {p1, v0, v1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lis2;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lis2;->b:Ljava/lang/String;

    return-object p0
.end method
