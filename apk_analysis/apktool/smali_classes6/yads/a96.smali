.class public final Lyads/a96;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final b:Lyads/y86;

.field public final c:Lyads/z86;


# direct methods
.method public constructor <init>(Lyads/y86;Lyads/z86;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Verification not executed with reason = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lyads/a96;->b:Lyads/y86;

    iput-object p2, p0, Lyads/a96;->c:Lyads/z86;

    return-void
.end method
