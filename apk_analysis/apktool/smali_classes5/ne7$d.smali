.class public final Lne7$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lne7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lja4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lja4;

    invoke-direct {v0}, Lja4;-><init>()V

    sput-object v0, Lne7$d;->a:Lja4;

    return-void
.end method
