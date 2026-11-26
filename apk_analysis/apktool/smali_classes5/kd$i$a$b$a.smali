.class public final Lkd$i$a$b$a;
.super Lkd$i$a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$i$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "choosen default"

    invoke-direct {p0, v0}, Lkd$i$a$b;-><init>(Ljava/lang/String;)V

    return-void
.end method
