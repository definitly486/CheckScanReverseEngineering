.class public abstract La13;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La13$b;
    }
.end annotation


# static fields
.field public static final a:La13$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La13$a;

    invoke-direct {v0}, La13;-><init>()V

    sput-object v0, La13;->a:La13$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
