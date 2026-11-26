.class public final Lp94$g;
.super Ln91;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public a:Lm94;


# virtual methods
.method public final a(Ln91$a;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lp94$g;->a:Lm94;

    invoke-static {p1}, Lo91;->d(Ln91$a;)Ljava/util/logging/Level;

    move-result-object p1

    sget-object v0, Ls91;->c:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Ls91;->a(Lm94;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final varargs b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lp94$g;->a:Lm94;

    invoke-static {p1}, Lo91;->d(Ln91$a;)Ljava/util/logging/Level;

    move-result-object p1

    sget-object v0, Ls91;->c:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Ls91;->a(Lm94;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
