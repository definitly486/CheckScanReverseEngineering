.class public final Lne7$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lne7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final a:Lnn5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnn5;

    invoke-direct {v0}, Lnn5;-><init>()V

    sput-object v0, Lne7$e;->a:Lnn5;

    return-void
.end method
