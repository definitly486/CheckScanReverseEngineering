.class public final Leb8$d;
.super Leb8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leb8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Leb8$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leb8$d;

    invoke-direct {v0}, Lsp7;-><init>()V

    sput-object v0, Leb8$d;->a:Leb8$d;

    return-void
.end method
