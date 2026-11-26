.class public final Llv5$f;
.super Ljo5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llv5$f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPeerHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llv5$f;->b:Ljava/lang/String;

    return-object p0
.end method
