.class public abstract Leo2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leo2$a;,
        Leo2$b;
    }
.end annotation


# static fields
.field public static final a:Leo2$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leo2$b;

    invoke-direct {v0}, Leo2;-><init>()V

    sput-object v0, Leo2;->a:Leo2$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
